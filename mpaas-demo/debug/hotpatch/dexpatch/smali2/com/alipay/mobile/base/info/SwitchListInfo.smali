.class public Lcom/alipay/mobile/base/info/SwitchListInfo;
.super Ljava/lang/Object;
.source "SwitchListInfo.java"


# instance fields
.field private switchAbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private switchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchMap:Ljava/util/Map;

    .line 11
    iput-object v0, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchAbMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSwitchAbMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchAbMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSwitchMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchMap:Ljava/util/Map;

    return-object v0
.end method

.method public setSwitchAbMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "switchAbMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchAbMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public setSwitchMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "switchMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/base/info/SwitchListInfo;->switchMap:Ljava/util/Map;

    .line 19
    return-void
.end method
