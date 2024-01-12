// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

bytes constant SESSIONKEYMANAGER_BYTECODE = hex"60806040908082526004918236101561001757600080fd5b600091823560e01c90816306fdde03146105985750806354fd4d50146105545780636d61fe701461054f5780638a91b0e31461054f578063cb9b272c146102f4578063d4511ee9146102da578063dbfd2f7314610292578063df73e60e146101b5578063ecd0596114610190578063f42c859d146100e95763f551e2ee1461009e57600080fd5b346100e55760603660031901126100e5576100b76106bd565b5060443567ffffffffffffffff81116100e1576020936100d991369101610625565b505051908152f35b8280fd5b5080fd5b508183346100e55760203660031901126100e557600190359283835282602052808320338452602052822082815501610122815461079d565b80610153575b505050337f10103b778a5e09e8bcc680439d97711489525190a1fe679251002e893f9ea5638380a380f35b82601f821160011461016b575050555b818380610128565b9091808252610189601f60208420940160051c8401600185016107d7565b5555610163565b509190346101b25760203660031901126101b257506001602092519135148152f35b80fd5b50346100e557806003193601126100e55761028e60016101d36106bd565b838051956101e0876106d3565b808752606080602098838a820152838582015201526024358152808752818120848060a01b0380941682528752209484519461021b866106d3565b86549165ffffffffffff978891828516895261025b818a0192848760301c168452858b019660601c87526102548651809a819301610927565b0388610721565b606089019687528351998a99828b52511690890152511690860152511660608401525160808084015260a08301906105e5565b0390f35b5082346100e1576003199282843601126101b25781359367ffffffffffffffff85116100e5576101409085360301126101b257506020926102d39101610822565b9051908152f35b50346100e5576020906102d36102ef3661068b565b6109bd565b5082346100e1576103043661068b565b9061030e826109bd565b92838552602092858452818620338752845281862065ffffffffffff928361033584610743565b1690868401946bffffffffffff00000000000061035187610743565b60301b16828601936bffffffffffffffffffffffff1961037086610756565b60601b1691171784556001809401606086019461038d868861076a565b919067ffffffffffffffff9a8b841161053c57509082918e8d6103b0875461079d565b90601f8211610503575b90508193601f86116001146104995750509261048e575b50508160011b916000199060031b1c19161790555b610403825196898852826103f9886107ee565b168a8901526107ee565b1690850152356001600160a01b0381169081900361048a57606084015235601e1982360301811215610486570180359301918311610482578236038213610482578061047c7f57aa9b35aca9ac2ac77db1278fe563afa57004616360740e680d89bc674ebd1e93608080840152339560a0840191610801565b0390a380f35b8480fd5b8680fd5b8780fd5b013590508d806103d1565b8783528183209550929392601f19871692915b8383106104eb575050509084600195949392106104d1575b505050811b0190556103e6565b0135600019600384901b60f8161c191690558d80806104c4565b8185978293949688013581550196019301908f6104ac565b87835280832061052b92601f880160051c8201928810610532575b601f0160051c01906107d7565b388e6103ba565b909150819061051e565b634e487b7160e01b8f526041905260248efd5b610658565b50346100e557816003193601126100e557805161028e9161057482610705565b6005825264302e302e3160d81b6020830152519182916020835260208301906105e5565b919050346100e157826003193601126100e15761028e92506105b982610705565b601182527029b2b9b9b4b7b725b2bca6b0b730b3b2b960791b6020830152519182916020835260208301905b919082519283825260005b848110610611575050826000602080949584010152601f8019910116010190565b6020818301810151848301820152016105f0565b9181601f840112156106535782359167ffffffffffffffff8311610653576020838186019501011161065357565b600080fd5b346106535760203660031901126106535760043567ffffffffffffffff811161065357610689903690600401610625565b005b60031990602081830112610653576004359167ffffffffffffffff831161065357826080920301126106535760040190565b600435906001600160a01b038216820361065357565b6080810190811067ffffffffffffffff8211176106ef57604052565b634e487b7160e01b600052604160045260246000fd5b6040810190811067ffffffffffffffff8211176106ef57604052565b90601f8019910116810190811067ffffffffffffffff8211176106ef57604052565b3565ffffffffffff811681036106535790565b356001600160a01b03811681036106535790565b903590601e1981360301821215610653570180359067ffffffffffffffff82116106535760200191813603831361065357565b90600182811c921680156107cd575b60208310146107b757565b634e487b7160e01b600052602260045260246000fd5b91607f16916107ac565b8181106107e2575050565b600081556001016107d7565b359065ffffffffffff8216820361065357565b908060209392818452848401376000828201840152601f01601f1916010190565b61082f606082018261076a565b6000906004116101b25750356001600160e01b031916635b0e93fb60e11b810361089e575060005b60088110156108885780610872575061086f90610c36565b90565b6001036108825761086f90610a51565b50600190565b634e487b7160e01b600052602160045260246000fd5b631a7e6adf60e11b81036108b457506001610857565b634899c13160e01b81036108ca57506002610857565b6344cbb27360e11b81036108e057506003610857565b6309026b7f60e31b81036108f657506005610857565b63f32a366160e01b810361090c57506006610857565b63fbef702760e01b03610920576004610857565b6007610857565b8054600093926109368261079d565b9182825260209360019160018116908160001461099e575060011461095d575b5050505050565b90939495506000929192528360002092846000945b83861061098a57505050500101903880808080610956565b805485870183015294019385908201610972565b60ff19168685015250505090151560051b010191503880808080610956565b6109c681610743565b90610a4b60406109d860208401610743565b936109f26109e7838601610756565b94606081019061076a565b80918451968794602086019965ffffffffffff60d01b809260d01b168b5260d01b1660268601526bffffffffffffffffffffffff199060601b16602c850152848401378101600083820152036020810184520182610721565b51902090565b610a5f61012082018261076a565b5090610a6e606082018261076a565b509060016021840135840101356004808401358401013503610c2e5760009060009260005b60016021870135870101358110610acb5750505060a01b65ffffffffffff60a01b1660d09190911b6001600160d01b03191617905090565b60048083013583010135811015610c18576024600582901b6004840135840180820183013590360360821901811215610653576004850135850101828101926001808b01358b010135851015610c045750602160018a01358a01830181013592610b4191808c01358c019182018101910161076a565b909383600052602060008152604090816000209060018060a01b038b35166000525260002081359360018060a01b03851685036106535786604482610ba797610b92610b9d9760648a97019061076a565b939092013590610d3b565b9591949094610e2c565b15610bf75765ffffffffffff811665ffffffffffff871610610bef575b5065ffffffffffff811665ffffffffffff871611610be6575b50600101610a93565b94506001610bdd565b945038610bc4565b5050505050505050600190565b634e487b7160e01b60009081526032600452fd5b634e487b7160e01b600052603260045260246000fd5b505050600190565b610c4461012082018261076a565b509060018201359160218101350190600160218301920135906000848152806020526040812060018060a01b038335168252602052610c8b6040822092606081019061076a565b9091816004116101b2576003198201806020116100e557806040116100e557601f198301838111610d2757806080116100e157116101b25750918385610cec93610cf69695609f19019060848101906010602482013591013560601c610d3b565b9491959095610e2c565b15610d205760a09190911b65ffffffffffff60a01b1660d09190911b6001600160d01b0319161790565b5050600190565b634e487b7160e01b83526011600452602483fd5b939290610db18760209497999899815460601c96610da2610d8c6040519b8c98899863c20bccb960e01b8a5260018060a01b03809e1660048b015260248a015260a060448a015260a4890191610801565b600160031995868984030160648a015201610927565b92858403016084860152610801565b0381600080955af1928315610e1f578193610ddf575b50505091549065ffffffffffff8083169260301c1690565b909192506020813d602011610e17575b81610dfc60209383610721565b810103126100e5575191821682036101b25750388080610dc7565b3d9150610def565b50604051903d90823e3d90fd5b6000949385939092916001600160a01b031680610e4a575050505050565b909192939550604091825190848852838614610ef0575b60418614610eb1575b602094959697606052818452630b135d3f60e11b958683526004830152602482019687948552806044840152806064928385013701915afa91511416903880808080610956565b602084820135891a8152848281376001908160808b825afa5184183d151715610eda5750610e6a565b9394505093505093606052523880808080610956565b60208181013560ff81901c601b018252823586526001600160ff1b03166060908152906001908160808c825afa5185183d151715610f2f575050610e61565b935097939450509350945252388080808061095656fea2646970667358221220983bacead807e81e26b9434f6bbb36c7631cbffe88d2dfe9c3027ff92ab31a1e64736f6c63430008170033";