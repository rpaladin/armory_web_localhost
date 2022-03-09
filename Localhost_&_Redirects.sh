#! /usr/bin/env sh

find_python() {
    if test -x "${1}";then
	printf '%s\n' "${1}"
    fi
    pythons=' python3 python'
    for python in ${pythons};do
	if which "${python}" >/dev/null;then
	    which "${python}"
	    return 0
	fi
    done
    return 1
}

usage() {
    printf        'Usage: %s <www_dir> [server_path] [python_path]\n' "${1}"
    printf '%s\n' '    www_dir: The directory containing the files.'
    printf '%s\n' '    server_path: The path the python script is located at.'
    printf '%s\n' '    python_path: The path the python executable is located at.'
    exit "${2}"
}


if test "${#}" -lt 1 || test "${#}" -gt 3;then
    usage "${0}" 1
fi

python_path="$(find_python "${3}")"
if ! test -x "${python_path}";then
    printf '%s\n' 'Python not found. Please provide python_path.'
    usage "${0}" 1
fi

if test -e "${2}";then
    server_path="${2}"
elif test -e './Localhost_&_Redirects.py';then
    server_path='./Localhost_&_Redirects.py'
else
    printf '%s\n' 'Server not found. Please provide server_path.'
    usage "${0}" 1
fi

printf '%s\n' 'Starting server.'
if "${python_path}" "${server_path}";then
    printf '%s\n' 'Server done.'
else
    printf '%s\n' 'Server failed.'
fi

return 0
