" PHP
" var_dump
nnoremap <leader>vd i var_dump("");<esc>o exit;<esc>kf"a 
" magento 2 log
noremap <leader>ml i \Magento\Framework\App\ObjectManager::getInstance()<esc>o ->get(\Psr\Log\LoggerInterface::class)->debug("");<esc>F"i

