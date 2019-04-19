[1mdiff --git a/Pipfile b/Pipfile[m
[1mdeleted file mode 100644[m
[1mindex 0a1f54f..0000000[m
[1m--- a/Pipfile[m
[1m+++ /dev/null[m
[36m@@ -1,17 +0,0 @@[m
[31m-[[source]][m
[31m-verify_ssl = true[m
[31m-url = "https://pypi.org/simple"[m
[31m-name = "pypi"[m
[31m-[m
[31m-[packages][m
[31m-requests = "*"[m
[31m-flask = "*"[m
[31m-"bs4" = "*"[m
[31m-elasticsearch = "*"[m
[31m-geopy = "*"[m
[31m-lxml = "*"[m
[31m-[m
[31m-[requires][m
[31m-python_version = "3.5"[m
[31m-[m
[31m-[dev-packages][m
[1mdiff --git a/Pipfile.lock b/Pipfile.lock[m
[1mdeleted file mode 100644[m
[1mindex c0f45f3..0000000[m
[1m--- a/Pipfile.lock[m
[1m+++ /dev/null[m
[36m@@ -1,202 +0,0 @@[m
[31m-{[m
[31m-    "_meta": {[m
[31m-        "hash": {[m
[31m-            "sha256": "687250e1ba68376d694733047fe3c4c0a87edc37d3ec655ba7a34fe8d703a118"[m
[31m-        },[m
[31m-        "pipfile-spec": 6,[m
[31m-        "requires": {[m
[31m-            "python_version": "3.5"[m
[31m-        },[m
[31m-        "sources": [[m
[31m-            {[m
[31m-                "name": "pypi",[m
[31m-                "url": "https://pypi.org/simple",[m
[31m-                "verify_ssl": true[m
[31m-            }[m
[31m-        ][m
[31m-    },[m
[31m-    "default": {[m
[31m-        "beautifulsoup4": {[m
[31m-            "hashes": [[m
[31m-                "sha256:034740f6cb549b4e932ae1ab975581e6103ac8f942200a0e9759065984391858",[m
[31m-                "sha256:945065979fb8529dd2f37dbb58f00b661bdbcbebf954f93b32fdf5263ef35348",[m
[31m-                "sha256:ba6d5c59906a85ac23dadfe5c88deaf3e179ef565f4898671253e50a78680718"[m
[31m-            ],[m
[31m-            "version": "==4.7.1"[m
[31m-        },[m
[31m-        "bs4": {[m
[31m-            "hashes": [[m
[31m-                "sha256:36ecea1fd7cc5c0c6e4a1ff075df26d50da647b75376626cc186e2212886dd3a"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==0.0.1"[m
[31m-        },[m
[31m-        "certifi": {[m
[31m-            "hashes": [[m
[31m-                "sha256:59b7658e26ca9c7339e00f8f4636cdfe59d34fa37b9b04f6f9e9926b3cece1a5",[m
[31m-                "sha256:b26104d6835d1f5e49452a26eb2ff87fe7090b89dfcaee5ea2212697e1e1d7ae"[m
[31m-            ],[m
[31m-            "version": "==2019.3.9"[m
[31m-        },[m
[31m-        "chardet": {[m
[31m-            "hashes": [[m
[31m-                "sha256:84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae",[m
[31m-                "sha256:fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"[m
[31m-            ],[m
[31m-            "version": "==3.0.4"[m
[31m-        },[m
[31m-        "click": {[m
[31m-            "hashes": [[m
[31m-                "sha256:2335065e6395b9e67ca716de5f7526736bfa6ceead690adf616d925bdc622b13",[m
[31m-                "sha256:5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"[m
[31m-            ],[m
[31m-            "version": "==7.0"[m
[31m-        },[m
[31m-        "elasticsearch": {[m
[31m-            "hashes": [[m
[31m-                "sha256:c621f2272bb2f000d228dc7016d058a1f90f15babdc938240b9f2d13690222db",[m
[31m-                "sha256:cf6cf834b6d0172dac5e704c398a11d1917cf61f15d32b79b1ddad4cd673c4b1"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==7.0.0"[m
[31m-        },[m
[31m-        "flask": {[m
[31m-            "hashes": [[m
[31m-                "sha256:2271c0070dbcb5275fad4a82e29f23ab92682dc45f9dfbc22c02ba9b9322ce48",[m
[31m-                "sha256:a080b744b7e345ccfcbc77954861cb05b3c63786e93f2b3875e0913d44b43f05"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==1.0.2"[m
[31m-        },[m
[31m-        "geographiclib": {[m
[31m-            "hashes": [[m
[31m-                "sha256:635da648fce80a57b81b28875d103dacf7deb12a3f5f7387ba7d39c51e096533"[m
[31m-            ],[m
[31m-            "version": "==1.49"[m
[31m-        },[m
[31m-        "geopy": {[m
[31m-            "hashes": [[m
[31m-                "sha256:9b23b6f45fb3a60d3d5d6c17dd9c2321fec990bf43d21b1f01bfcc2f062b6dea",[m
[31m-                "sha256:d2fc0dc79572f5acbcf7e48af1233ac8033079ddb15cae538b9dd03587436de5"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==1.19.0"[m
[31m-        },[m
[31m-        "idna": {[m
[31m-            "hashes": [[m
[31m-                "sha256:c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407",[m
[31m-                "sha256:ea8b7f6188e6fa117537c3df7da9fc686d485087abf6ac197f9c46432f7e4a3c"[m
[31m-            ],[m
[31m-            "version": "==2.8"[m
[31m-        },[m
[31m-        "itsdangerous": {[m
[31m-            "hashes": [[m
[31m-                "sha256:321b033d07f2a4136d3ec762eac9f16a10ccd60f53c0c91af90217ace7ba1f19",[m
[31m-                "sha256:b12271b2047cb23eeb98c8b5622e2e5c5e9abd9784a153e9d8ef9cb4dd09d749"[m
[31m-            ],[m
[31m-            "version": "==1.1.0"[m
[31m-        },[m
[31m-        "jinja2": {[m
[31m-            "hashes": [[m
[31m-                "sha256:065c4f02ebe7f7cf559e49ee5a95fb800a9e4528727aec6f24402a5374c65013",[m
[31m-                "sha256:14dd6caf1527abb21f08f86c784eac40853ba93edb79552aa1e4b8aef1b61c7b"[m
[31m-            ],[m
[31m-            "version": "==2.10.1"[m
[31m-        },[m
[31m-        "lxml": {[m
[31m-            "hashes": [[m
[31m-                "sha256:03984196d00670b2ab14ae0ea83d5cc0cfa4f5a42558afa9ab5fa745995328f5",[m
[31m-                "sha256:0815b0c9f897468de6a386dc15917a0becf48cc92425613aa8bbfc7f0f82951f",[m
[31m-                "sha256:175f3825f075cf02d15099eb52658457cf0ff103dcf11512b5d2583e1d40f58b",[m
[31m-                "sha256:30e14c62d88d1e01a26936ecd1c6e784d4afc9aa002bba4321c5897937112616",[m
[31m-                "sha256:3210da6f36cf4b835ff1be853962b22cc354d506f493b67a4303c88bbb40d57b",[m
[31m-                "sha256:40f60819fbd5bad6e191ba1329bfafa09ab7f3f174b3d034d413ef5266963294",[m
[31m-                "sha256:43b26a865a61549919f8a42e094dfdb62847113cf776d84bd6b60e4e3fc20ea3",[m
[31m-                "sha256:4a03dd682f8e35a10234904e0b9508d705ff98cf962c5851ed052e9340df3d90",[m
[31m-                "sha256:62f382cddf3d2e52cf266e161aa522d54fd624b8cc567bc18f573d9d50d40e8e",[m
[31m-                "sha256:7b98f0325be8450da70aa4a796c4f06852949fe031878b4aa1d6c417a412f314",[m
[31m-                "sha256:846a0739e595871041385d86d12af4b6999f921359b38affb99cdd6b54219a8f",[m
[31m-                "sha256:a3080470559938a09a5d0ec558c005282e99ac77bf8211fb7b9a5c66390acd8d",[m
[31m-                "sha256:ad841b78a476623955da270ab8d207c3c694aa5eba71f4792f65926dc46c6ee8",[m
[31m-                "sha256:afdd75d9735e44c639ffd6258ce04a2de3b208f148072c02478162d0944d9da3",[m
[31m-                "sha256:b4fbf9b552faff54742bcd0791ab1da5863363fb19047e68f6592be1ac2dab33",[m
[31m-                "sha256:b90c4e32d6ec089d3fa3518436bdf5ce4d902a0787dbd9bb09f37afe8b994317",[m
[31m-                "sha256:b91cfe4438c741aeff662d413fd2808ac901cc6229c838236840d11de4586d63",[m
[31m-                "sha256:bdb0593a42070b0a5f138b79b872289ee73c8e25b3f0bea6564e795b55b6bcdd",[m
[31m-                "sha256:c4e4bca2bb68ce22320297dfa1a7bf070a5b20bcbaec4ee023f83d2f6e76496f",[m
[31m-                "sha256:cec4ab14af9eae8501be3266ff50c3c2aecc017ba1e86c160209bb4f0423df6a",[m
[31m-                "sha256:e83b4b2bf029f5104bc1227dbb7bf5ace6fd8fabaebffcd4f8106fafc69fc45f",[m
[31m-                "sha256:e995b3734a46d41ae60b6097f7c51ba9958648c6d1e0935b7e0ee446ee4abe22",[m
[31m-                "sha256:f679d93dec7f7210575c85379a31322df4c46496f184ef650d3aba1484b38a2d",[m
[31m-                "sha256:fd213bb5166e46974f113c8228daaef1732abc47cb561ce9c4c8eaed4bd3b09b",[m
[31m-                "sha256:fdcb57b906dbc1f80666e6290e794ab8fb959a2e17aa5aee1758a85d1da4533f",[m
[31m-                "sha256:ff424b01d090ffe1947ec7432b07f536912e0300458f9a7f48ea217dd8362b86"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==4.3.3"[m
[31m-        },[m
[31m-        "markupsafe": {[m
[31m-            "hashes": [[m
[31m-                "sha256:00bc623926325b26bb9605ae9eae8a215691f33cae5df11ca5424f06f2d1f473",[m
[31m-                "sha256:09027a7803a62ca78792ad89403b1b7a73a01c8cb65909cd876f7fcebd79b161",[m
[31m-                "sha256:09c4b7f37d6c648cb13f9230d847adf22f8171b1ccc4d5682398e77f40309235",[m
[31m-                "sha256:1027c282dad077d0bae18be6794e6b6b8c91d58ed8a8d89a89d59693b9131db5",[m
[31m-                "sha256:24982cc2533820871eba85ba648cd53d8623687ff11cbb805be4ff7b4c971aff",[m
[31m-                "sha256:29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b",[m
[31m-                "sha256:43a55c2930bbc139570ac2452adf3d70cdbb3cfe5912c71cdce1c2c6bbd9c5d1",[m
[31m-                "sha256:46c99d2de99945ec5cb54f23c8cd5689f6d7177305ebff350a58ce5f8de1669e",[m
[31m-                "sha256:500d4957e52ddc3351cabf489e79c91c17f6e0899158447047588650b5e69183",[m
[31m-                "sha256:535f6fc4d397c1563d08b88e485c3496cf5784e927af890fb3c3aac7f933ec66",[m
[31m-                "sha256:62fe6c95e3ec8a7fad637b7f3d372c15ec1caa01ab47926cfdf7a75b40e0eac1",[m
[31m-                "sha256:6dd73240d2af64df90aa7c4e7481e23825ea70af4b4922f8ede5b9e35f78a3b1",[m
[31m-                "sha256:717ba8fe3ae9cc0006d7c451f0bb265ee07739daf76355d06366154ee68d221e",[m
[31m-                "sha256:79855e1c5b8da654cf486b830bd42c06e8780cea587384cf6545b7d9ac013a0b",[m
[31m-                "sha256:7c1699dfe0cf8ff607dbdcc1e9b9af1755371f92a68f706051cc8c37d447c905",[m
[31m-                "sha256:88e5fcfb52ee7b911e8bb6d6aa2fd21fbecc674eadd44118a9cc3863f938e735",[m
[31m-                "sha256:8defac2f2ccd6805ebf65f5eeb132adcf2ab57aa11fdf4c0dd5169a004710e7d",[m
[31m-                "sha256:98c7086708b163d425c67c7a91bad6e466bb99d797aa64f965e9d25c12111a5e",[m
[31m-                "sha256:9add70b36c5666a2ed02b43b335fe19002ee5235efd4b8a89bfcf9005bebac0d",[m
[31m-                "sha256:9bf40443012702a1d2070043cb6291650a0841ece432556f784f004937f0f32c",[m
[31m-                "sha256:ade5e387d2ad0d7ebf59146cc00c8044acbd863725f887353a10df825fc8ae21",[m
[31m-                "sha256:b00c1de48212e4cc9603895652c5c410df699856a2853135b3967591e4beebc2",[m
[31m-                "sha256:b1282f8c00509d99fef04d8ba936b156d419be841854fe901d8ae224c59f0be5",[m
[31m-                "sha256:b2051432115498d3562c084a49bba65d97cf251f5a331c64a12ee7e04dacc51b",[m
[31m-                "sha256:ba59edeaa2fc6114428f1637ffff42da1e311e29382d81b339c1817d37ec93c6",[m
[31m-                "sha256:c8716a48d94b06bb3b2524c2b77e055fb313aeb4ea620c8dd03a105574ba704f",[m
[31m-                "sha256:cd5df75523866410809ca100dc9681e301e3c27567cf498077e8551b6d20e42f",[m
[31m-                "sha256:e249096428b3ae81b08327a63a485ad0878de3fb939049038579ac0ef61e17e7"[m
[31m-            ],[m
[31m-            "version": "==1.1.1"[m
[31m-        },[m
[31m-        "requests": {[m
[31m-            "hashes": [[m
[31m-                "sha256:502a824f31acdacb3a35b6690b5fbf0bc41d63a24a45c4004352b0242707598e",[m
[31m-                "sha256:7bf2a778576d825600030a110f3c0e3e8edc51dfaafe1c146e39a2027784957b"[m
[31m-            ],[m
[31m-            "index": "pypi",[m
[31m-            "version": "==2.21.0"[m
[31m-        },[m
[31m-        "soupsieve": {[m
[31m-            "hashes": [[m
[31m-                "sha256:3aef141566afd07201b525c17bfaadd07580a8066f82b57f7c9417f26adbd0a3",[m
[31m-                "sha256:e41a65e99bd125972d84221022beb1e4b5cfc68fa12c170c39834ce32d1b294c"[m
[31m-            ],[m
[31m-            "version": "==1.9"[m
[31m-        },[m
[31m-        "urllib3": {[m
[31m-            "hashes": [[m
[31m-                "sha256:61bf29cada3fc2fbefad4fdf059ea4bd1b4a86d2b6d15e1c7c0b582b9752fe39",[m
[31m-                "sha256:de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"[m
[31m-            ],[m
[31m-            "version": "==1.24.1"[m
[31m-        },[m
[31m-        "werkzeug": {[m
[31m-            "hashes": [[m
[31m-                "sha256:0a73e8bb2ff2feecfc5d56e6f458f5b99290ef34f565ffb2665801ff7de6af7a",[m
[31m-                "sha256:7fad9770a8778f9576693f0cc29c7dcc36964df916b83734f4431c0e612a7fbc"[m
[31m-            ],[m
[31m-            "version": "==0.15.2"[m
[31m-        }[m
[31m-    },[m
[31m-    "develop": {}[m
[31m-}[m
