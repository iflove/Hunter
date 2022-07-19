.class public Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig;
.super Ljava/lang/Object;
.source "InsideDefaultConfig.java"


# static fields
.field public static final switchMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig;->switchMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
