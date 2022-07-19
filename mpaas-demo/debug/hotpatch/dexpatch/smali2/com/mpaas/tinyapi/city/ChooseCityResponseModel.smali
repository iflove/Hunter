.class public Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;
.super Lcom/mpaas/tinyapi/ResponseModel;
.source "ChooseCityResponseModel.java"


# instance fields
.field public a:Lcom/mpaas/tinyapi/city/view/City;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/ResponseModel;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
