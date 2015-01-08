<div class="pagination">
    <a class="" href="/index.php?option=main&page_count=<?php echo  $_SESSION['page'] <= 0 ? $_SESSION['page'] = 0 : $_SESSION['page'] -= 1;?>">Prev</a> //
    <a class="" href="/index.php?option=main&page_count=<?php echo  $_SESSION['page'] >= $_SESSION['count_page']-1 ? $_SESSION['page'] = $_SESSION['count_page'] : $_SESSION['page'] += 2; ?>">Next</a>
</div>

