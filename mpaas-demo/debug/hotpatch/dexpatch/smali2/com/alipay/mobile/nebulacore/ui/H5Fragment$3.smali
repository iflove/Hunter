.class final Lcom/alipay/mobile/nebulacore/ui/H5Fragment$3;
.super Ljava/util/LinkedList;
.source "H5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/alipay/mobile/nebulax/kernel/track/TrackId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 174
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Cost_Nebula_H5AppCenterSetupPage:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$3;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method
