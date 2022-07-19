.class public Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;
.super Ljava/lang/Object;
.source "EngineError.java"


# instance fields
.field public description:Ljava/lang/String;

.field public engineErrorType:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

.field public engineType:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
