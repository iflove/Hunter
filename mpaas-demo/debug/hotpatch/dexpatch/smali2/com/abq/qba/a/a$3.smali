.class final Lcom/abq/qba/a/a$3;
.super Lcom/abq/qba/a/a$a;
.source "MergeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abq/qba/a/a;->b(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$b;[Ljava/util/zip/ZipFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/abq/qba/a/a$a<",
        "Ljava/util/zip/ZipFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/abq/qba/a/a$b;

.field final synthetic b:Z

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/abq/qba/a/a$b;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/abq/qba/a/a$3;->a:Lcom/abq/qba/a/a$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/abq/qba/a/a$3;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/abq/qba/a/a$3;->c:Z

    invoke-direct {p0}, Lcom/abq/qba/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/abq/qba/a/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/abq/qba/a/a$b<",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/abq/qba/a/a$3;->a:Lcom/abq/qba/a/a$b;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/abq/qba/a/a$3;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/abq/qba/a/a$3;->c:Z

    return v0
.end method
