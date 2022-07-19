.class Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;
.super Ljava/util/LinkedList;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcurrentLinkedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;->this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;-><init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 169
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
