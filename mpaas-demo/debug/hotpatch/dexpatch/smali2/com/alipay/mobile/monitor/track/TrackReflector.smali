.class public Lcom/alipay/mobile/monitor/track/TrackReflector;
.super Ljava/lang/Object;
.source "TrackReflector.java"


# static fields
.field private static f:Lcom/alipay/mobile/monitor/track/TrackReflector;


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/reflect/Field;

.field c:Ljava/lang/reflect/Field;

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 32
    const-string v0, "Class Not Found."

    const-string v1, "Reflection"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    .line 23
    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    .line 24
    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    .line 27
    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->d:Ljava/lang/Class;

    .line 28
    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    .line 34
    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 35
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 36
    .local v2, "ex":Ljava/lang/ClassCastException;
    const-string v3, "Cast"

    const-string v4, "Class of view cast exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    nop

    .line 42
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const-string/jumbo v4, "mOnClickListener"

    const/4 v5, 0x1

    const-string v6, "No Such Field."

    if-lt v2, v3, :cond_1

    .line 44
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 46
    :try_start_1
    const-string/jumbo v3, "mListenerInfo"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    .line 47
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    goto :goto_2

    .line 48
    :catch_2
    move-exception v2

    .line 49
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 56
    :try_start_2
    const-string v2, "android.view.View$ListenerInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->d:Ljava/lang/Class;

    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 61
    :catch_3
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    goto :goto_3

    .line 59
    :catch_4
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :goto_3
    goto :goto_4

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 70
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 73
    .local v0, "b":Z
    if-nez v0, :cond_2

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5

    .line 79
    .end local v0    # "b":Z
    :cond_2
    goto :goto_4

    .line 77
    :catch_5
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_3
    :goto_4
    return-void
.end method

.method public static a()Lcom/alipay/mobile/monitor/track/TrackReflector;
    .locals 1

    .line 86
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackReflector;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/TrackReflector;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    .line 89
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    return-object v0
.end method

.method private b(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 118
    .local v1, "retrievedListener":Landroid/view/View$OnClickListener;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "Reflection"

    const-string v3, "Illegal Access."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    return-object v1
.end method

.method private b(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "Reflection"

    const-string v2, "Illegal Access."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void

    .line 128
    :cond_1
    :goto_1
    return-void
.end method

.method private c(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    const/4 v1, 0x0

    .line 151
    .local v1, "retrievedListener":Landroid/view/View$OnClickListener;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "listenerInfo":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 157
    .end local v0    # "listenerInfo":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "Reflection"

    const-string v3, "Illegal Access."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    return-object v1

    .line 145
    .end local v1    # "retrievedListener":Landroid/view/View$OnClickListener;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private c(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "listenerInfo":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "listenerInfo":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "Reflection"

    const-string v2, "Illegal Access."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void

    .line 165
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->c(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->b(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/monitor/track/TrackReflector;->c(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/monitor/track/TrackReflector;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_0
    return-void
.end method
