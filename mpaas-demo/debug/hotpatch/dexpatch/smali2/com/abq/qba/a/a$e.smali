.class final Lcom/abq/qba/a/a$e;
.super Ljava/lang/Object;
.source "MergeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Lcom/abq/qba/e/s;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/abq/qba/e/s;Ljava/util/List;)V
    .locals 0
    .param p1, "typeSpecChunk"    # Lcom/abq/qba/e/s;
    .param p2, "typeChunks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abq/qba/e/s;",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/r;",
            ">;)V"
        }
    .end annotation

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-object p1, p0, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    .line 1087
    iput-object p2, p0, Lcom/abq/qba/a/a$e;->b:Ljava/util/List;

    .line 1088
    return-void
.end method
