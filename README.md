# vagrant開発環境構築

vagrant upした時にリトライエラーになる  
→どうやって解消したっけ？
```
% vagrant up  
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'ailispaw/barge' version '2.15.0' is up to date...
==> default: Clearing any previously set forwarded ports...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
    default: Adapter 2: hostonly
==> default: Forwarding ports...
    default: 2375 (guest) => 2375 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: bargee
    default: SSH auth method: private key
    default: Warning: Authentication failure. Retrying...
    default: Warning: Authentication failure. Retrying...
```



# windows
## vagrant upで進まない場合


```
bcdedit
```

```
hypervisorlaunchtype    Auto
```
上記のようにAutoになっている場合はoffにする

```
bcdedit /set hypervisorlaunchtype off
```
これで`vagrant up`できた  
[参照](https://turningp.jp/programing/php/laravel/homestead-ssh_error)
