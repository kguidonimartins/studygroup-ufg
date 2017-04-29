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
 git init # initialize a local Git repository in this directory
 ```
 git status # to verify new files or to track changes in files

 git remote add origin https://github.com/fulano/meu-repo-legal.git
 ```

clear 	# clean the console or Crtl + L (universal command)

ls		# list files and folders in the current directory

ls -a 	# list hidden and unhidden files and folders

ls -al 	# list details for hidden and unhidden flies and folders

cd 		# stands for directory # with no argument takes to your home directory

cd .. 	# change directory to one level above

mkdir	# stands for "make directory" # just like right click > new folders
		# Caution: use quotes (" ") to create a directory

touch 	# create an empty file

cp 		# stands for "copy" (e.g. cp file directory) # the first argument is the file and the second the path to where

cp -r 	# copy documents from a directory to other (e.g. cp -r directory1 directory2)

mv 		# stand for "move" a file to other directory (e.g. mv file directory)

mv 		# to rename file (e.g. mv file rename_file)

echo 	# print whatever you want

date 	# print today's date

#------------------------------------------------------------------------------------------------------------------------

# Configure Git
# Setting
```shell
git config --global user.name "fulano"
git config --global user.email "fulano@gagamail.com"
```

git config --list # confirme

mkdir web-repo-github # to make a new directory

git init # initialize a local Git repository in this directory

git status # to verify new files or to track changes in files

git remote add origin https://github.com/fulano/meu-repo-legal.git

# One should do this before committing.
git add . # adds all new files

git add -u # updates tracking for files that changed names or were deleted

git add -A # does both of the previous

# Changes you want to commit to be saved as an intermediate version
git commit -m "message" # what you did? # This only updates local repo, not remote on GitHub

git diff # para verificar mudanças no conteúdo dos arquivos (e.g. linhas novas adicionadas)

git diff --staged # verifica os arquivos e suas mudanças que estão na 'stage area'

git log # verifica o histórico de commits do projeto desde o início

git log -p # histórico detalhado dos commits (i.e. git log + git diff)
# No entanto, dependendo do tamanho das alterações, o log pode ser muito grande
#e será necessário dar 'enter' em cada paginação para ver todas as alterações.
# No final aparecerá '(END)'; pressione a letra 'q' para finalizar a leitura.

git log -p -1 # limita a lista de commits detalhados
git log -p -2 # limita a lista de commits detalhados aos dois últimos commits

gitk # abre o visualizador do histórico de mudanças dos working directory

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
