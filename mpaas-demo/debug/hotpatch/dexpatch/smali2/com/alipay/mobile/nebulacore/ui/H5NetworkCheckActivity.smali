.class public Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5NetworkCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "paramInt"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_network_check_activity:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->setContentView(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_error_check_layout:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 36
    .local v2, "relativeLayout":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;

    const/4 v4, 0x0

    move-object v5, v4

    .line 38
    .local v5, "h5NetworkCheckViewProvider":Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 40
    invoke-interface {v5, v0}, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;->getTitleBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45
    .end local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 46
    :cond_0
    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_lv_nav_back:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object v6, v4

    .line 47
    .local v6, "button":Landroid/widget/ImageButton;
    new-instance v7, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .end local v6    # "button":Landroid/widget/ImageButton;
    :goto_0
    sget v3, Lcom/alipay/mobile/nebula/R$id;->error_code:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "errorCode":Landroid/widget/TextView;
    const-string v6, "error_code"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    .line 58
    .local v8, "errorCodeStr":Ljava/lang/String;
    move-object v8, v7

    const-string v9, ""

    if-eqz v7, :cond_1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    sget v6, Lcom/alipay/mobile/nebula/R$id;->url:I

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 66
    .local v6, "url":Landroid/widget/TextView;
    const-string v7, "url"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    .line 67
    .local v11, "urlStr":Ljava/lang/String;
    move-object v11, v10

    if-eqz v10, :cond_2

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 68
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 73
    :goto_2
    const-string v7, "wifi"

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 74
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v10, 0x0

    .line 75
    .local v10, "di":Landroid/net/DhcpInfo;
    const/4 v12, -0x1

    .line 76
    .local v12, "wifiState":I
    if-eqz v7, :cond_3

    .line 77
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    .line 78
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v10

    .line 80
    :cond_3
    nop

    .line 81
    const-string v13, "connectivity"

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 82
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 83
    .local v13, "ni":Landroid/net/NetworkInfo;
    const-string v14, ""

    .line 84
    .local v14, "apn":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 85
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    .line 86
    move-object v14, v15

    if-nez v15, :cond_4

    .line 87
    const-string v14, ""

    .line 91
    :cond_4
    sget v15, Lcom/alipay/mobile/nebula/R$id;->state:I

    invoke-virtual {v0, v15}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v4

    .line 92
    .local v16, "state":Landroid/widget/TextView;
    move-object/from16 v17, v15

    .end local v16    # "state":Landroid/widget/TextView;
    .local v17, "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v18, v2

    .end local v2    # "relativeLayout":Landroid/widget/RelativeLayout;
    .local v18, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_wifi:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 93
    if-eqz v12, :cond_8

    const/4 v2, 0x1

    if-eq v12, v2, :cond_7

    const/4 v2, 0x2

    if-eq v12, v2, :cond_6

    const/4 v2, 0x3

    if-eq v12, v2, :cond_5

    .line 111
    nop

    .line 112
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    move-object/from16 v4, v17

    .end local v17    # "state":Landroid/widget/TextView;
    .local v4, "state":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 103
    .end local v4    # "state":Landroid/widget/TextView;
    .restart local v17    # "state":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v4, v17

    .line 104
    .end local v17    # "state":Landroid/widget/TextView;
    .restart local v4    # "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_enabled:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 105
    goto :goto_3

    .line 107
    .end local v4    # "state":Landroid/widget/TextView;
    .restart local v17    # "state":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v4, v17

    .line 108
    .end local v17    # "state":Landroid/widget/TextView;
    .restart local v4    # "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_enabling:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 109
    goto :goto_3

    .line 95
    .end local v4    # "state":Landroid/widget/TextView;
    .restart local v17    # "state":Landroid/widget/TextView;
    :cond_7
    move-object/from16 v4, v17

    .line 96
    .end local v17    # "state":Landroid/widget/TextView;
    .restart local v4    # "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_disabled:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 97
    goto :goto_3

    .line 99
    .end local v4    # "state":Landroid/widget/TextView;
    .restart local v17    # "state":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v4, v17

    .end local v17    # "state":Landroid/widget/TextView;
    .restart local v4    # "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_disabling:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 101
    nop

    .line 115
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v3

    .end local v3    # "errorCode":Landroid/widget/TextView;
    .local v17, "errorCode":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v19, v5

    .end local v5    # "h5NetworkCheckViewProvider":Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;
    .local v19, "h5NetworkCheckViewProvider":Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;
    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_gate:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 116
    if-eqz v10, :cond_b

    .line 117
    iget v2, v10, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v5, v3

    .line 118
    .local v5, "gate":Ljava/lang/String;
    move-object v3, v2

    .end local v5    # "gate":Ljava/lang/String;
    .local v3, "gate":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    .line 122
    :cond_9
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 124
    .end local v3    # "gate":Ljava/lang/String;
    goto :goto_5

    .line 119
    .restart local v3    # "gate":Ljava/lang/String;
    :cond_a
    :goto_4
    nop

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 125
    .end local v3    # "gate":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 127
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_apn:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_c
    move-object v5, v14

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 131
    sget v2, Lcom/alipay/mobile/nebula/R$id;->dns:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v3, "dns":Landroid/widget/TextView;
    move-object v3, v2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_ip:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 133
    if-eqz v10, :cond_f

    .line 134
    iget v2, v10, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 135
    .local v5, "ip":Ljava/lang/String;
    move-object v5, v2

    if-eqz v2, :cond_e

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    .line 139
    :cond_d
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 141
    .end local v5    # "ip":Ljava/lang/String;
    goto :goto_8

    .line 136
    .restart local v5    # "ip":Ljava/lang/String;
    :cond_e
    :goto_7
    nop

    .line 137
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 142
    .end local v5    # "ip":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 145
    :goto_8
    sget v2, Lcom/alipay/mobile/nebula/R$id;->reason:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    .local v2, "reason":Landroid/widget/TextView;
    const-string v5, "reason"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "reasonStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_reason:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 148
    if-eqz v5, :cond_10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 149
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    .line 151
    :cond_10
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method
