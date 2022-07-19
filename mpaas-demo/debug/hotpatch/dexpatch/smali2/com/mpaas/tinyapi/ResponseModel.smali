.class public Lcom/mpaas/tinyapi/ResponseModel;
.super Ljava/lang/Object;
.source "ResponseModel.java"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mpaas/tinyapi/ResponseModel;->id:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mpaas/tinyapi/ResponseModel;->id:Ljava/lang/String;

    return-object v0
.end method
