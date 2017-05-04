Grupo de estudos integrados [LabComunidades](http://cianciaruso.wix.com/home#!) e [Lapig](https://www.lapig.iesa.ufg.br/lapig/)  
## Encontro do dia 29-IV-2017  
## Aprendendo a usar Git e GitHub

[O que é controle de versão? Por que é legal usar?](#o-que-e-controle-de-versao?-por-que-e-legal-usar?)  
[Um pouco de vocabulário e arquitetura Git](#um-pouco-de-vocabulario-e-arquitetura-git)  
[Trabalhando remotamente](#trabalhando-remotamente)  
[Trabalhando localmente](#trabalhando-localmente)  

### O que é controle de versão? Por que é legal usar?  
Neste grupo trabalharemos em colaboração para resolver desafios relacionados ao processamento de dados espaciais. O controle de versões implementado em Git permite que as alterações feitas em um arquivo sejam registradas em uma linha do tempo, sendo possível recuperar versões anteriores a qualquer momento.  

Porque com o controle de versões você não salva cópias do seu trabalho, mas a sua história, você evita coisas assim no seu diretório de trabalho:  
	+ script-v0.1.R  
	+ script-depois-que-fulano-mexeu.R  
	+ script-mesclado.R  
	+ script-que-nao-funciona-mais.R  
	+ script-pqp.R  

**Exemplos**  
Repositório online do pacote `vegan`:   [https://github.com/vegandevs/vegan](https://github.com/vegandevs/vegan)  
Repositório online da tese de doutorado da Elita Baldridge: [https://github.com/embaldridge/sad-comparison](https://github.com/embaldridge/sad-comparison)  

### Um pouco de vocabulário e arquitetura Git  

A arquitetura básica com a qual temos que lidar é composta por um master, branches, clones e forks.  

![arquitetura git](https://guides.github.com/activities/hello-world/branching.png)  

O **master** é a principal linha do tempo do seu **repositório** (um projeto com os arquivos necessários para desenvolvê-lo). Nele, idealmente, os arquivos só são alterados quando estritamente necessário, ou seja, quando uma alteração é fundamental para o avanço do projeto.  

Um **branch** <img src="https://raw.githubusercontent.com/mozillascience/friendly-github/master/assets/images/Branch.gif" style="width: 20px;"/> é uma ramificação do master. É um repositório dentro do repositório principal criado para testar alterações que podem ou não ser implementadas no master. Idealmente, cada colaborador cria um branch para testar as alterações que julga necessárias e submete estas alterações ao julgamento dos demais colegas antes de implementá-las no master.  

Os repositórios podem ser criados online e muitas coisas podem ser feitas lá. Porém, para trabalhar localmente em um repositório, ou seja, para trabalhar offline, precisamos criar um **clone** do repositório que temos online. Um clone é uma cópia sincronizada do seu repositório online. Tudo o que você fizer no seu diretório de trabalho local (correspondente ao clone) será sincronizado com o repositório online.  

Já os **forks** <img src="https://raw.githubusercontent.com/mozillascience/friendly-github/master/assets/images/Fork.gif" style="width: 20px;"/> são cópias completas e independentes de um repositório. Usamos o fork (e não o clone) quando pretendemos mudar a direção do projeto, ou quando queremos contribuir com o projeto de alguém de forma independente e só depois sugerir as mudanças no projeto original. Caso você precise atualizar o seu fork com a versão mais nova do projeto, você pode fazer isso solicitando um **fetch** para o Git.  

Quando alteramos algum arquivo e salvamos a nova versão, fazemos um **commit**<img src="https://raw.githubusercontent.com/mozillascience/friendly-github/master/assets/images/Commit.gif" style="width: 20px;"/>. Os commits devem ser acompanhados de comentários curtos, mas suficientemente descritivos, para que você possa entender qual a diferença daquela versão e localizá-la mais facilmente. Com os commits é possível rastrear qual a mudança que foi feita, onde, por quem e quando.  

![commit](https://raw.githubusercontent.com/mozillascience/study-group-onboarding/master/images/gh09.png)  

Após alterar um arquivo e salvar a nova versão, esta versão precisa receber uma etiqueta, um código de identificação, e depois ser enviada para o repositório online. Chamamos isso de **push**. Para atualizar o seu diretório local com as versões mais novas dos arquivos, você deve mandar o Git fazer um **pull**.  

Ao trabalhar em um branch, você pode pedir que as alterações que você fez sejam implementadas no ramo principal do seu *workflow* (ou em qualquer outro ramo). Para isso você solicita um **merge** através de um **pull request** <img src="https://raw.githubusercontent.com/mozillascience/friendly-github/master/assets/images/PullRequest.gif" style="width: 20px;"/>. No pull request, você solicita a um dono do repositório ou colaborador que ele aceite as suas modificações feitas em um fork ou em um branch. Caso ele aceite, você passa a ser listado como colaborador do projeto.

### Trabalhando remotamente  
O portal online do seu servidor Git (no nosso caso, o GitHub) permite que você faça boa parte das tarefas descritas acima de maneira bastante intuitiva. É possível editar alguns arquivos, subir outros, solicitar um merge, criar e excluir um branch etc. Conhecendo a lógica e a arquitetura Git, fica fácil de trabalhar online.    
Para um passo a passo detalhado, dê uma olhada [nesta página](https://mozillascience.github.io/WOW-2017/github/) (em inglês).

### Trabalhando localmente  

No entanto, nem sempre as alterações que precisamos fazer podem ser feitas diretamente no portal, ou seriam feitas mais eficientemente se trabalhássemos no nosso computador, com os nossos softwares preferidos. Para trabalhar no seu repositório a partir do seu computador, é necessário instalar algumas coisas:   
Git: https://git-scm.com/downloads  
GitKraken ou outro Git GUI (opcional, mas bem legal): https://www.gitkraken.com/  

Existem dois inícios possíveis:  
* Você pode criar o seu repositório online diretamente no GitHub;  
* Ou você pode "transformar" um diretório local em um projeto controlado pelo Git.  

No primeiro caso, para ter uma cópia do seu repositório online no seu computador, basta clonar o seu diretório, seja baixando todos os arquivos em um .zip ou copiando a chave ssh para usar no Git.  
![clone](http://trymuffin.in/wp-content/uploads/2016/11/GitHub-SSH_CloneCommandCopy.png)  
Também é possível clonar pelo GitKraken, clicando na pastinha do canto superior esquerdo ou em "File", no menu.  
![](https://support.gitkraken.com/img/documentation/getting-started/clone.png)  

No segundo caso, você deve clicar com o botão direito do seu mouse na sua pasta de trabalho e abrir o Git Bash; alternativamente, no GitKraken, você pode clicar em "Init", na mesma janela mostrada acima, e indicar o diretório da sua pasta em "New repository path".  

Para utilizar o Git, é necessário configurá-lo para que a sua conta no seu servidor Git seja reconhecida por ele. No Git Bash:  
```
git config --global user.name "fulano"
git config --global user.email "fulano@gagamail.com"
git config --list #Confirme suas configurações
```
Pronto, agora o Git sabe quem você é.  
Para iniciar um repositório a partir do seu computador, você pode dizer para o Git iniciar ou "vigiar" uma pasta.  
Primeiro, confira qual o diretório de trabalho e mude, se necessário.  
```
pwd # Retorna o diretório de trabalho
cd	# Te leva para o seu diretório "root"
cd .. # Te leva para o diretório um nível acima
cd "seu/diretório" # Muda o seu diretório de trabalho
 ```
 Para clonar o seu repositório, copie a url como mostra a figura acima e peça para o Git clonar o repositório no diretório que você indicou.  
 ```
 git clone https://github.com/kguidonimartins/studygroup-ufg.git
 ```
  Caso você ainda não tenha criado uma pasta para o seu projeto, você pode pedir para o Git criar pra você:  
 ```
 mkdir "web-repo-github" # Para criar um novo diretório
 ```
 Caso você já tenha uma pasta e quer que o Git "vigie" ela, inicie um repositório:  
 ```
 git init # Inicia um repositório local no diretório indicado
 ```
 Explore um pouco o seu novo repositório. Verifique se os arquivos estão todos lá com `ls`, liste os arquivos ocultos ou não com `ls -a`, confira os detalhes destes arquivos com `ls -al` e crie arquivos vazios com `touch`.  
 Para copiar um arquivo do seu diretório de trabalho para um diretório qualquer, diga ao Git para copiar (cp) um arquivo (file - substitua pelo nome do arquivo a ser copiado) para um diretório (directory - substitua pelo diretório de destino). Para copiar de diretórios diferentes, use `-r`:  
 ```
 cp file directory
 cp -r
```
Para mover ou renomear arquivos, use `mv`:  
```
 mv file directory
 mv file rename_file
```
 Você pode (talvez você precise) dizer pro Git onde está o seu repositório remoto:  
 ```
 git remote add origin https://github.com/fulano/meu-repo-legal.git
 ```
 Feito isso, você pode verificar que arquivos não estão sincronizados com o seu repositório online (sejam novos ou com alterações salvas):  
 ```
 git status
 ```
Seu terminal ficou uma bagunça? Tente um `clear` ou Ctrl+L.  

-----
Pausa para um café!  
-----
Muito bem, agora seu repositório está pronto para usar.  
Verifique se existem novos arquivos na sua pasta ou arquivos modificados que ainda não foram "pushados":  
```
git status
```
Ué, não encontrou algum arquivo importante? Adicione-o agora no campo de visão do Git!
```
git add arquivo

git add -u # Atualiza o restreamento de algum arquivo que foi renomeado ou excluído.

git add -A # Faz as duas coisas anteriores ao mesmo tempo.
```
Agora que o Git está de olho em todos os seus arquivos, qualquer alteração que você fizer (e quiser que ela seja registrada na linha do tempo deste arquivo) será detectada. Para que suas mudanças sejam registradas, "commite" o arquivo alterado com um comentário, para que você possa lembrar qual o diferencial daquela versão.
```
git commit -m "mensagem"
```
O `commit`só atualiza o repositório local, se você estiver trabalhando localmente, ou o repositório remoto, se você estiver trabalhando remotamente. Para sincronizar os dois repositórios, você deve "empurrar" as atualizações para o repositório remoto ou "puxar" para o repositório local.
```
git push origin master
#"Git, por favor, leve os arquivos atualizados para o repositório remoto 'origin', no ramo 'master'."

git pull
#"Git, por favor, traga os arquivos atualizados do repositório remoto para o meu repositório local"
```
### Como acompanhar as mudanças nos meus arquivos?
Verifique as mudanças no conteúdo dos arquivos (e.g. linhas novas adicionadas):
```
git diff
```
Verifique os arquivos e suas mudanças que estão na 'stage area':
```
git diff --staged
```
Se você estiver perdido entre as diferentes versões dos seus arquivos, confira o histórico dos commits! :)
```
git log # histórico de commits do projeto desde o início
git log -p # histórico detalhado dos commits (i.e. git log + git diff)
```
Dependendo do tamanho das alterações, o log pode ser muito grande e será necessário dar 'enter' em cada paginação para ver todas as alterações. No final aparecerá '(END)'; então, pressione a letra 'q' para finalizar a leitura.  
Se você quiser só conferir os últimos commits, limite a lista com `git log -p -1` (substitua o 1 pelo número de commits que você deseja ver). Você também pode conferir todo o histórico de mudanças dos diretórios de trabalho com o visualizador do Git com `gitk`. Não é legal?!  


#-----------------------------------------------------------------------------------
Para reverter mudanças feitas pelo commits
#--------------------------------------------------------------------------------------

git log --pretty=oneline # apresenta as chaves e as mensagens de cada commit

git commit --amend -m "mensagem" # para unir a nova edição ao último commit
# Isto é usado quando o último commit precisa ser substituído. Não cria um novo commit,
#somente altera a mensagem e inclui as modificações

git reset HEAD novo_arquivo.R # retira o arquivo 'novo_arquivo.R' da stage area após 'git add .'

git rm novo_arquivo.R # Remove files from the working tree and from the index

#--------------------------------------------------------------------------------------
Trabalhando com tags
São úteis para trabalhar com versões do sistema.
No entanto, podem ser problemáticas para testes.
Recomenda-se o uso de branchs (ramificações).
#--------------------------------------------------------------------------------------

git tag # lista as tags dos arquivos

git tag -a v1.0 -m "Mensagem referente à tag v1.0" # inclui uma tag e uma mensagem

git tag -a v0.0 chave_do_commit_que_são_aquelas_letras_e_números -m "Informe qual tag será"
# Criando tag a partir de commit. Isto é muito útil

git show v1.0 # mostra inclusões da nova versão

git checkout v0.0 # nesta situação temos as tags 'v0.0' e 'v1.0'. Para fazer a troca entre
#versões a partir das tags, utilize aquele comando.

git checkout master # volta o projeto para as origens

git tag -d nova_da_tag # deleta uma tag

#--------------------------------------------------------------------------------------
Trabalhando com branchs
Criando ambientes de testes.
Cria-se uma ramificação mantendo a estrutura original (cópia de segurança).
#--------------------------------------------------------------------------------------

git branch nome_do_branch # cria um novo branch

git checkout nome_do_branch # transfere os arquivos de branch 'master' para o novo branch

git checkout -b nome_do_branch # evita os dois comandos acima. Cria e transfere de uma vez
#só os arquivos do branch 'master' para o novo branch

git commit -a -m "novas linhas adicionadas no fim do código" # commit das alterações no branch de teste

git merge novo_branch # une as alterações do branch de teste ao branch branch 'master'
# É preciso estar no branch destino (neste o 'master') e trazer as informações do branch de origem das
#alterações (neste caso, novo_branch)

git branch # lista o branchs existentes

git branch -d novo_branch # remove o branch

#--------------------------------------------------------------------------------------
Integrando o git com o GitHub
#--------------------------------------------------------------------------------------
Gerando as chaves necessárias

ssh-keygen # gera chaves

git clone git@github.com:fulano/curso_git.git # clonando um repositório existente no GitHub

git push origin master # envia as modificações para o GitHub


[Find out commits associated a specific file](http://stackoverflow.com/questions/3701404/list-all-commits-for-a-specific-file)

`git log -p filename`

Precisei do código abaixo para reverter as mudanças feitas quando adicionei os arquivos binários (imagens, '.ai' e pdfs) ao Git LFS do BitBucket.

[Git revert certain files](https://stackoverflow.com/questions/23068790/git-revert-certain-files)

```
git revert --no-commit <commit hash> # Revert, don't commit it yet
git reset # Unstage everything
git add yourFilesToRevert # Add the file to revert
git commit -m "commit message"
git reset --hard # Undo changes from the revert we didn't commit
```

### 2017-05-03 inclusão de novos comandos; confira: https://rogerdudler.github.io/git-guide/index.pt_BR.html

- Sobrescrever alterações locais: No caso de você ter feito algo errado, você pode sobrescrever as alterações locais usando o commando:

```shell
git checkout -- <arquivo>
```

Isto substitui as alterações na sua árvore de trabalho com o conteúdo mais recente no HEAD. Alterações já adicionadas ao index, bem como novos arquivos serão mantidos.

- Se ao invés disso você deseja remover todas as alterações e commits locais, recupere o histórico mais recente do servidor e aponte para seu branch master local desta forma:

```shell
git fetch origin
git reset --hard origin/master
```

- Para fazer inclusões interativamente via terminal, use:

```shell
git add -i
```

Siga as instruções fornecidas pelo terminal e inclua quantos arquivos quiser antes do commit.

### 2017-05-04

```shell
git show-branch -a
```



blablabla