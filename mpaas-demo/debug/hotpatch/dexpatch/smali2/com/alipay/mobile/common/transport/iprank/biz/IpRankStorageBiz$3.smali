.class Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$3;
.super Ljava/lang/Object;
.source "IpRankStorageBiz.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$3;->this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .param p2, "rhs"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 342
    iget v0, p2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    iget v1, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 339
    check-cast p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    check-cast p2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$3;->compare(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)I

    move-result p1

    return p1
.end method
