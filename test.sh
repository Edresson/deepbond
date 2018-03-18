#!/bin/bash

embpath="/media/treviso/FEJ/Embeddings-Deepbond/ptbr"
fixedparams="--gpu -w 7 -e 15 -k 1 -b 1 -t bucket --models rcnn none"
et="word2vec"
ed="600"
ea="sg"
ef="${embpath}/${et}/pt_${et}_${ea}_${ed}.emb"


# -----------
# SS
# -----------

# ss/dd_fillers/dd_editdisfs/ssdd
# task="ss"

# myid="SS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid --task $task --load --emb-type $et --emb-file $ef $fixedparams

# myid="SS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid -d controle --split-ratio 1 --task $task --save --emb-type $et --emb-file $ef $fixedparams



# -----------
# FILLERS
# -----------

# ss/dd_fillers/dd_editdisfs/ssdd
# task="dd_fillers"

# myid="FILLERS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid --task $task --load --emb-type $et --emb-file $ef $fixedparams

# myid="FILLERS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid -d controle_fillers_eh --split-ratio 1 --task $task --save --emb-type $et --emb-file $ef $fixedparams


# -----------
# EDIT DISFS
# -----------

# ss/dd_fillers/dd_editdisfs/ssdd
# task="dd_editdisfs_binary"

# myid="EDITDISFS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid --task $task --load --emb-type $et --emb-file $ef $fixedparams

# myid="EDITDISFS_TEXT_CINDERELA"
# time sudo python3 -m deepbond --id $myid -d controle_editdisfs_wo_fillers --split-ratio 1 --task $task --save --emb-type $et --emb-file $ef $fixedparams "--without-emb --use-handcrafted"


time sudo python3 -m deepbond --id "TESTE" --task "TESTE" --emb-type $et --emb-file $ef $fixedparams
