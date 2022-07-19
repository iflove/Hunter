.class Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;
.super Ljava/util/LinkedList;
.source "LimitedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "limit"    # I

    .line 13
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;->limit:I

    .line 15
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    .local v0, "added":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;->limit:I

    if-le v1, v2, :cond_0

    .line 21
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    return v0
.end method
