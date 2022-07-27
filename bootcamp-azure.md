
azure : é uma plataforma de computação em nuvem desenvolvida pela
micrsosoft. ela envolve diversos serviços de computação. 


computação em nuvem é o fornecimento de serviços de computação, incluindo
servicores, armazenamento, bancos de dados, rede, análise etc, pela 
internet. 

modelos de serviço em nuvem : 

IaaS - são de nossa responsabilidade aplicações, data, runtime, middleware
e OS. Virtualização, servers, storage e networking são responsabilidade 
da Azure.  Ex.: Máquinas Virtuais.

PaaS  - Basicamente me preocupo com a aplicação e com os dados. Todo o 
restante é por conta da microsoft. Ex.: Web Server como serviço, 
bancos de dados gerenciados. 


SaaS - Previlegia meu foco no negócio. Um exemplo seria o Office. Não preciso
me preocupar com nada. Simplesmente uso o serviço. Ex.: Office 365, 
Dynamic 365 e Salesforce.



## Serviços básicos do Azure

### Computação 

- Virtual Machines (IaaS) :  É basicamente um servidor.  


Serivços de plataforma são serviços auto-gerenciados. 
- Azure Functions (PaaS) :

- Azure Kubernetes Service (PaaS) : 

- Azure Container Instances (PaaS) :



![](/scope-levels.png).


## Azure Account

Azure accounts são criadas autmaticamente pela microsoft no momento da criação da
conta. Não podemos por exemplo, criar outras accounts. 

## Subscription 

Deferentemente da account, as subscriptions podem ser criadas pelo usuário a fim de 
atender as necessidades do negócio. Um exemplo de subscriptions diferentes são empresas que mantém 
ambientes de desenvolvimente(dev), homologação(hmg) e produção(prd). Nestes casos teríamos uma 
subscrição de dev, outra de hmg e outra final para o ambiente de produção.  Poderia também
ser por setores por exemplo, time de marketing, time de vendas, time de people. De fato não 
há uma regra estabelecida sobre como criar subcriptions no entanto existem recomendações do 
Cloud Adoption Framework(CAF).


## Resource groups

Semelhante as subscriptions estão os Resource Groups no entanto, em um nível de granularidade 
mais baixo. Abaixo das subscriptions criamos os resource groups. Como o próprio nome sugere
é um grupo de recursos. Podemos subir um conjuntos de serviços do azure e encapsulá-los dentro
resource group. 

## Resources 

Por fim, na mais baixa granularidade das contas azxure estão os serviços. Esses são de fato, os
recurso disponíveis na azure seja um banco de dados, uma máquina virtual etc. 



O CAF te fornece diretrizes não somente para contas, subs e resources como também à nível 
projetos que podemos fazer com o azure.  Por exemplo, suponhamos que você deseja fazer 
um projeto de migração de bancos de dados. O CAF apresentar um framework para este tipo
de tarefa. A organizaçao de objetos no Azure é um tema que deve ser planejado
anteos do projeto. 

# Infraestrutura global Azure

![](azure_regions-1.png) 

Hoje estão disponível cerca de 70 rtegioes no globo. Sao datacenters espalhados pelo 
mundo e são conectados por uma rede de baixca latência. Por exemplo pode ser que 
nossos esteja hospedados em datacenters diferentes dentro do mesma região, no entanto, 
nós usuários não vemos qualquer diferença.  A própria azure se encarrega de disponibilzar
o SLA pré-estabelicido mesmo que os recursos estejam em Datacenters difenretes. 

## Regiões do Azure

Os principais serviços quando sao lanádos, aparecem primeiro nas regiões US. Após 
isso esses serviços são implementados para outras regiões. (https://azure.microsoft.com/pt-br/global-infrastructure/geographies/)


## Zonas de Disponibilidade (AZs)

![](AzureREgions.png)

São recursos de alta disponibilidade. 
Dentro de uma região da Azure, podemos ter vários datacenters distintos. Isso ocorre
pois caso uma região fique indisponível, por exemplro por desastres naturais podemos 
espelhar os recursos de uma AZ para outra.  Usar AZs significa configurar o Azure para 
nao usar somente uma região. Ou seja replicar aplica;óes autom[aticoamente entre AZs. 

## Usando AZs em Aplicações

Existem dois tipos de serviços em relação a AZ, aqueles em que é necessário fazer
o deploy em duas zonas distintas e aqueles que já são sincronizados automáticamente.

## Regiões Pares do Azure
