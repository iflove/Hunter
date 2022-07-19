.class public Lcom/mpaas/nebula/application/MiniOpenCardApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "MiniOpenCardApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniOpenCardApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private doOpenCard(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 48
    invoke-static {}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->getInstance()Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->getOpenCardHandler()Lcom/mpaas/nebula/adapter/api/OpenCardHandler;

    move-result-object v0

    .line 49
    .local v0, "handler":Lcom/mpaas/nebula/adapter/api/OpenCardHandler;
    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MiniOpenCardApp"

    const-string v3, "No OpenCardHandler is specified, skip the rest operations"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 53
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "a":Ljava/lang/String;
    const-string v2, "b"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "b":Ljava/lang/String;
    const-string v3, "partnerId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "partnerId":Ljava/lang/String;
    const-string v5, "serialNumber"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "serialNo":Ljava/lang/String;
    const-string v5, "lb"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "t"

    const-string v7, "c"

    const-string v8, "m"

    if-eqz v5, :cond_3

    .line 59
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-interface {v0, v3}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openCardList(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    invoke-interface {v0, v3}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openVoucherList(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 64
    invoke-interface {v0, v3}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openTicketList(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    const-string v5, "p"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "p":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 69
    invoke-interface {v0, v5}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openCardDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 71
    invoke-interface {v0, v5, v3, v4}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openVoucherDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    invoke-interface {v0, v5, v3, v4}, Lcom/mpaas/nebula/adapter/api/OpenCardHandler;->openTicketDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v5    # "p":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniOpenCardApp"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/mpaas/nebula/application/MiniOpenCardApp;->doOpenCard(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniOpenCardApp"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/mpaas/nebula/application/MiniOpenCardApp;->doOpenCard(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 40
    return-void
.end method
