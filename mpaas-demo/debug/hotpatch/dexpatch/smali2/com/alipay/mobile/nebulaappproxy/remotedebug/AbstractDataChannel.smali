.class public abstract Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;
.super Ljava/lang/Object;
.source "AbstractDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 14
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    return v0
.end method
