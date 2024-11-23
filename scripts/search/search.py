import subprocess

def exec_search(search: str, browser: str, engine: str):
    if browser == 'firefox':
        tokens = ['firefox', '--search'] + search.split(' ')
        subprocess.run(tokens)
    elif browser == 'brave-browser':
        processed_search = search.replace(' ', '+')

        tokens = ['brave-browser', engine + processed_search]
        subprocess.run(tokens)
    else:
        return


BROWSER = 'firefox'
ENGINE = 'https://duckduckgo.com/?q='
CONFIG_FILE = '~/scripts/search/config.rasi'

COMMAND = ['rofi', '-dmenu', 
                    '-p', '󰍉 Search', 
                    '-theme', CONFIG_FILE]

INPUT = subprocess.run(COMMAND, capture_output=True, text=True)

if INPUT.stdout != '':
    exec_search(INPUT.stdout, BROWSER, ENGINE)
