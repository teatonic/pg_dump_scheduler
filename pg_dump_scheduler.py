import schedule
import time
import subprocess
import os


def shell_job():
    #this_script_path = os.path.dirname(os.path.realpath(__file__)) + "/pg_backup.sh" 
    
    subprocess.call(['/pg_backup.sh', 'payonce_dev','changeme'])
    print("================")

schedule.every(10).seconds.do(shell_job)
#schedule.every(10).minutes.do(job)
#schedule.every().hour.do(job)
#schedule.every().day.at("10:30").do(job)
#schedule.every(5).to(10).minutes.do(job)
#schedule.every().monday.do(job)
#schedule.every().wednesday.at("13:15").do(job)
#schedule.every().minute.at(":17").do(job)

while True:
    schedule.run_pending()
    time.sleep(1)


