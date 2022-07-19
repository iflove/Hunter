.class public Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;
.super Ljava/lang/Object;
.source "CreateParams.java"


# instance fields
.field public containerHeight:I

.field public containerWidth:I

.field public urlVisitListener:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

.field public useForEmbed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->useForEmbed:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->urlVisitListener:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

    return-void
.end method
