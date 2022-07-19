.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
.super Ljava/lang/Object;
.source "H5SessionTabObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

.field private volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    .line 27
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public declared-synchronized getData(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;)Ljava/lang/String;
    .locals 1
    .param p1, "h5SessionTabListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    monitor-enter p0

    .line 21
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 20
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
    .end local p1    # "h5SessionTabListener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    monitor-enter p0

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->b:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
    .end local p1    # "data":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
