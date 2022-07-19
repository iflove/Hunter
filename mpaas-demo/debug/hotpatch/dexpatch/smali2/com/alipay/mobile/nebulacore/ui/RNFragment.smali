.class public Lcom/alipay/mobile/nebulacore/ui/RNFragment;
.super Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.source "RNFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    return-void
.end method

.method public static resetToH5FragmentBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p0, "startParams"    # Landroid/os/Bundle;

    .line 18
    const-string v0, "bizType"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 19
    .local v3, "bizType":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_0

    const-string v1, "rn_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v2, "url":Ljava/lang/String;
    move-object v2, v1

    const-string v4, "bundle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const-string v1, "rnpages"

    const-string v5, "pages"

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v5, "html"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 35
    .local v2, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v1, "startParams":Landroid/os/Bundle;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    .end local v1    # "startParams":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "h5View":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/h5container/service/RnService;->addRnView(Lcom/alipay/mobile/h5container/api/H5Page;Landroidx/fragment/app/FragmentManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreateView exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RNFragment"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 49
    :goto_1
    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .line 54
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onDestroyView()V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v0

    .line 57
    .local v0, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/RnService;->removeRnView(Lcom/alipay/mobile/h5container/api/H5Page;Landroidx/fragment/app/FragmentManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroyView exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RNFragment"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    return-void

    .line 63
    :cond_0
    :goto_0
    return-void
.end method
