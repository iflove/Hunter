.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;
.super Ljava/lang/Object;
.source "ResultResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final INTERSECTION_BOOL_RESOLVER:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/resolver/BoolIntersectionResolver;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/resolver/BoolIntersectionResolver;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;->INTERSECTION_BOOL_RESOLVER:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
