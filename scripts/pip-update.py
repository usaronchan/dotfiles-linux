import os

# pip auto update python3 packages
def pip_update():
    model_ls = os.popen('pip list -o').readlines()
    up_list = [i.split()[0] for i in model_ls[2:-1]]
    print(f"Check update packages:{up_list}")
    for item in up_list:
        if item == "pip":
            os.system("pip install --upgrade pip")
        elif not item.startswith("\\x"):
            try:
                print('-' * 50, f'Beginning update packages:{item}', sep='\n')
                os.system(f"pip install --upgrade {item}")
            except:
                print(f"Update fail:{item}")

pip_update()
