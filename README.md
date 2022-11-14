# changeGP2toGP3

## Breve descrição sobre GP2 e GP3

Os volumes gp3 do Amazon EBS são a última geração de volumes EBS baseados em SSD de uso geral que permitem aos clientes provisionar desempenho independentemente da capacidade de armazenamento, oferecendo um preço por GB até 20% menor do que os volumes gp2 existentes. Com volumes gp3, os clientes podem dimensionar IOPS (operações de entrada/saída por segundo) e taxa de transferência sem precisar provisionar capacidade de armazenamento em bloco adicional. Isso significa que os clientes pagam apenas pelo armazenamento de que precisam.

Os novos volumes gp3 foram projetados para fornecer um desempenho de linha de base previsível de 3.000 IOPS, independentemente do tamanho do volume. Para casos de uso em que seu aplicativo precisa de mais desempenho do que a linha de base, basta provisionar o IOPS ou a taxa de transferência de que precisa, sem precisar adicionar mais capacidade. Os volumes gp3 são ideais para uma ampla variedade de aplicativos que exigem alto desempenho a baixo custo, incluindo MySQL, Cassandra, desktops virtuais e clusters analíticos do Hadoop. Para aplicativos que precisam de maior durabilidade, latência ou IOPS do que o gp3 pode fornecer, recomendamos o uso de volumes io2.

Para saber mais sobre definição de preço, visite a página de definição de preço do Amazon EBS.

| Volume Type | GP3 | GP2 |
| -----------       | ----------- | ----------- |
| Short Description | Lowest cost SSD volume that balances price performance for a wide variety of transactional workloads | General Purpose SSD volume that balances price performance for a wide variety of transactional workloads |
| Durability   | 99.8% - 99.9% durability        | 99.8% - 99.9% durability |
| Use Cases   | Virtual desktops, medium sized single instance databases such as Microsoft SQL Server and Oracle, latency sensitive interactive applications, boot volumes, and dev/test environments | Virtual desktops, medium sized single instance databases such as Microsoft SQL Server and Oracle, latency sensitive interactive applications, boot volumes, and dev/test environments |
| API Name   | gp3 | gp2 |
| Volume Size   | 1 GB - 16 TB | 1 GB - 16 TB |
| Max IOPS/Volume   | 16,000 | 16,000 |
| Max Throughput*/Volume   | 1,000 MB/s | 250 MB/s |
| Max IOPS/Instance   | 260,000 | 260,000 |
| Max Throughput/Instance   | 7,500 MB/s | 7,500 MB/s|
| Price   | $0.08/GB-month 3,000 IOPS free and $0.005/provisioned IOPS-month over 3,000; 125 MB/s free and $0.04/provisioned MB/s-month over 125 |$0.10/GB-month |


## Descrição do Projeto
<p align="center">This repository is responsible to change all EBS volumes from GP2 to GP3 using AWS CLI</p>

### Autor
---

<sub><b>Felipe Santos</b></sub></a> <a href="https://www.linkedin.com/in/felipethadeu/" title="Linkedin">🚀</a>
