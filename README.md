# studygroup-ufg

Grupo de estudos integrados LabComunidades e Lapig

### Estrutura do repisitório

```shell
|-- studygroup-ufg/        
		|-- cleaned-data/  # dados processados
		|   |-- raster/     
		|   |-- shapefile/
		|-- outputs/       # resultados intermediários de análises
		|-- R/             # scripts com funções ou alguma rotina
		|   |-- functions/
		|   |-- scripts/
		|-- raw-data/      # dados brutos; não processados
		|-- report/        # relatórios dinâmicos
```

### Comandos básicos para o nosso *workflow*

Um aviso antes de tudo: **sempre trabalhe no seu branch, nunca no master!**
Os comandos abaixo vão manter o seu *branch* sempre atualizado com os arquivos do *master*.

1. Antes de iniciar o trabalho, confira em qual *branch* você está:
```
git branch
```

2. Vá para o *master* e 'puxe' as atualizações do repositório:
```
git checkout master && git pull
```

3. Volte ao seu *branch* de trabalho (e.g. *meu_branch*) e "mescle-o" com o *master*:
```
git checkout meu_branch && git merge master meu_branch
```

4. "Empurre" as modificações para o repositório online; isto apenas informará a "mescla" feita pelo comando anterior.
```
git push
```

5. Adicione e "commite" os arquivos após as modificações necessárias:
```
git add . && git commit -a -m "mensagem curta e informativa"
```

6. O passo mais importante para que o trabalho flua: **"empurre" os arquivos para o seu branch, e não para o master!**
```
git push origin meu_branch
```

7. Submeta um *pull request* pelo GitHub.

### Tutoriais Git e GitHub

[Nosso guia de referência (em construção)](https://github.com/kguidonimartins/studygroup-ufg/blob/master/guia-de-referencia.md)

[Comandos básicos](https://comandosgit.github.io/)

[Ploty](https://plot.ly/r/github-getting-started-for-data-scientists/)

[The Programming Historian](http://programminghistorian.org/lessons/getting-started-with-github-desktop)

[Happy Git and GitHub for the useR](http://happygitwithr.com/)

### Download (escolha seu sistema operacional)

Git : https://git-scm.com/downloads

Biblioteca LaTeX (para relatórios em '.pdf'): https://www.latex-project.org/get/

GitKraken: https://www.gitkraken.com/

### Controle de versão em trabalhos colaborativos: [uma necessidade](https://medium.com/@claytonssilva/git-da-necessidade-a-automa%C3%A7%C3%A3o-de-sua-release-parte-1-a9d697e8f9ee)
