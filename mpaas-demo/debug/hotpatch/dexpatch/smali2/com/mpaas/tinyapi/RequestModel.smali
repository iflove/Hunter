.class public Lcom/mpaas/tinyapi/RequestModel;
.super Ljava/lang/Object;
.source "RequestModel.java"


# instance fields
.field private final a:Lcom/mpaas/tinyapi/RequestType;


# direct methods
.method public constructor <init>(Lcom/mpaas/tinyapi/RequestType;)V
    .locals 0
    .param p1, "type"    # Lcom/mpaas/tinyapi/RequestType;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mpaas/tinyapi/RequestModel;->a:Lcom/mpaas/tinyapi/RequestType;

    .line 13
    return-void
.end method


# virtual methods
.method final a()Lcom/mpaas/tinyapi/RequestType;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mpaas/tinyapi/RequestModel;->a:Lcom/mpaas/tinyapi/RequestType;

    return-object v0
.end method
