.class public Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;
.super Lcom/mpaas/tinyapi/RequestModel;
.source "ChooseCityRequestModel.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/mpaas/tinyapi/RequestType;->CHOOSE_CITY:Lcom/mpaas/tinyapi/RequestType;

    invoke-direct {p0, v0}, Lcom/mpaas/tinyapi/RequestModel;-><init>(Lcom/mpaas/tinyapi/RequestType;)V

    .line 10
    return-void
.end method
