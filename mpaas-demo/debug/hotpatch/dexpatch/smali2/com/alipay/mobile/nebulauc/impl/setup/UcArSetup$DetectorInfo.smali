.class Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
.super Ljava/lang/Object;
.source "UcArSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectorInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo$VaildCallback;
    }
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field public vaildCallback:Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo$VaildCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "detectorName"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "extraInfo"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;->clazz:Ljava/lang/Class;

    .line 54
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;->metadata:Ljava/util/HashMap;

    .line 55
    return-void
.end method
