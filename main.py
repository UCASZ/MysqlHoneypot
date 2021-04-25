import evalServer_for_win as evalServer
from multiprocessing import Pool

def eval_server():
    evalServer.run()

if __name__ == '__main__':
    pool = Pool(1)
    pool.apply_async(eval_server, args=())
    pool.close()
    pool.join()