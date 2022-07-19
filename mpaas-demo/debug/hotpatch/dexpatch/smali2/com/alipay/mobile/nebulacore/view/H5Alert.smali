.class public Lcom/alipay/mobile/nebulacore/view/H5Alert;
.super Ljava/lang/Object;
.source "H5Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    }
.end annotation


# static fields
.field public static final INDEX_CANCEL:I = 0x3

.field public static final INDEX_LEFT:I = 0x0

.field public static final INDEX_MIDDLE:I = 0x1

.field public static final INDEX_RIGHT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "H5Alert"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

.field private i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    .line 35
    return-void
.end method


# virtual methods
.method public buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 4
    .param p1, "labels"    # [Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    .line 62
    :cond_2
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    .line 64
    :cond_3
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    .line 67
    :goto_0
    return-object p0

    .line 54
    :cond_4
    :goto_1
    const-string v0, "H5Alert"

    const-string v1, "no buttons set."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object p0
.end method

.method public cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0
    .param p1, "cancelable"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    .line 49
    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    const-string v0, "H5Alert"

    const-string v1, "dismiss exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    .line 127
    :cond_0
    return-void
.end method

.method public listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    .line 72
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;->onCancel(Lcom/alipay/mobile/nebulacore/view/H5Alert;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 131
    const/4 v0, 0x2

    .line 132
    .local v0, "index":I
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0xe

    if-ne p2, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_3

    .line 138
    :cond_2
    const/4 v0, 0x0

    .line 141
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    if-eqz v1, :cond_4

    .line 144
    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;->onClick(Lcom/alipay/mobile/nebulacore/view/H5Alert;I)V

    .line 146
    :cond_4
    return-void
.end method

.method public show()Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    const-string v1, "H5Alert"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "empty title and message"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object p0

    .line 87
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xe

    if-nez v1, :cond_5

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_4

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_7

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    .line 115
    return-object p0

    .line 77
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_9
    :goto_2
    const-string v0, "activity is finishing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    .line 79
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    .line 39
    return-object p0
.end method
