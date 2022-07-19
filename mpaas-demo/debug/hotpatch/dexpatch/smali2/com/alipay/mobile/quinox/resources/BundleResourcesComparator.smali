.class public Lcom/alipay/mobile/quinox/resources/BundleResourcesComparator;
.super Ljava/lang/Object;
.source "BundleResourcesComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/quinox/bundle/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/Bundle;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "rhs"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 15
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/alipay/mobile/quinox/bundle/Bundle;

    check-cast p2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/resources/BundleResourcesComparator;->compare(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/Bundle;)I

    move-result p1

    return p1
.end method
