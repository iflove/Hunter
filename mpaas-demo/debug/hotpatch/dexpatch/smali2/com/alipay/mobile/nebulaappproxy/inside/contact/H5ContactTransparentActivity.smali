.class public Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "H5ContactTransparentActivity.java"


# static fields
.field public static final ContactsRequestCode:I = 0x3

.field private static final TAG:Ljava/lang/String; = "H5ContactTransparentActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private goToContactListActivity()V
    .locals 3

    .line 44
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5ContactTransparentActivity"

    const-string v2, "goToContactListActivity"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private processSystemContactCallback(Landroid/net/Uri;)V
    .locals 9
    .param p1, "data"    # Landroid/net/Uri;

    .line 72
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;-><init>()V

    .line 73
    .local v0, "contact":Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "data1"

    const-string v8, "display_name"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 75
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    .local v1, "phoneCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    nop

    .line 82
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 81
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "phoneNumber":Ljava/lang/String;
    nop

    .line 84
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 83
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 86
    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->name:Ljava/lang/String;

    .line 87
    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 91
    .local v2, "throwable":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processSystemContactCallback "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ContactTransparentActivity"

    invoke-static {v4, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    nop

    .line 97
    .end local v1    # "phoneCursor":Landroid/database/Cursor;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->setResultAccount(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->finish()V

    .line 55
    const-string v0, "H5ContactTransparentActivity"

    const-string/jumbo v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 57
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->processSystemContactCallback(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->setResultAccount(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->setResultAccount(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->setResultAccount(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V

    .line 69
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_0
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$layout;->transparent_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->setContentView(I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ContactTransparentActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;->goToContactListActivity()V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 40
    return-void
.end method
