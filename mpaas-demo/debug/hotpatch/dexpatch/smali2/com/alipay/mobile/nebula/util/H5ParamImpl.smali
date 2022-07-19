.class public Lcom/alipay/mobile/nebula/util/H5ParamImpl;
.super Ljava/lang/Object;
.source "H5ParamImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamImpl"


# instance fields
.field private defaultValue:Ljava/lang/Object;

.field private longName:Ljava/lang/String;

.field private shortName:Ljava/lang/String;

.field private type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ln"    # Ljava/lang/String;
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .param p4, "dv"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getLongName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setType(Lcom/alipay/mobile/h5container/api/H5Param$ParamType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 45
    return-void
.end method

.method public unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "fillDefault"    # Z

    .line 52
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    .line 53
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return-object p1

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v2, "H5ParamImpl"

    if-ne v0, v1, :cond_8

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 61
    .local v0, "value":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    :cond_2
    :goto_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 69
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "valueStr":Ljava/lang/String;
    const-string v4, "YES"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    const/4 v0, 0x1

    goto :goto_2

    .line 72
    :cond_3
    const-string v4, "NO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    const/4 v0, 0x0

    goto :goto_2

    .line 74
    :cond_4
    const-string v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    const/4 v0, 0x0

    goto :goto_2

    .line 76
    :cond_5
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    const/4 v0, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_6
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 80
    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 79
    :cond_7
    :goto_1
    nop

    .line 83
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    .end local v0    # "value":Z
    .end local v1    # "obj":Ljava/lang/Object;
    goto/16 :goto_b

    :cond_8
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    if-ne v0, v1, :cond_c

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 86
    .local v1, "df":Ljava/lang/String;
    move-object v1, v0

    .line 87
    .local v0, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 89
    :cond_9
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_b
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "df":Ljava/lang/String;
    goto/16 :goto_b

    :cond_c
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Exception"

    if-eqz v0, :cond_12

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "value":I
    const/4 v3, 0x0

    .line 100
    .local v3, "obj":Ljava/lang/Object;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 101
    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 102
    :cond_d
    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 103
    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 106
    :cond_e
    :goto_4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 107
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "valueStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 114
    :cond_f
    goto :goto_6

    .line 112
    :catch_0
    move-exception v5

    .line 113
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v2, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "valueStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 115
    :cond_10
    instance-of v1, v3, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 116
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    .line 115
    :cond_11
    :goto_5
    nop

    .line 119
    :goto_6
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v0    # "value":I
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_a

    .line 120
    :cond_12
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v3, v0

    .line 123
    .local v3, "value":D
    const/4 v0, 0x0

    .line 124
    .local v0, "obj":Ljava/lang/Object;
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 125
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 126
    :cond_13
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 127
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    :cond_14
    :goto_7
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 131
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "valueStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v3, v6

    .line 136
    goto :goto_9

    .line 134
    :catch_1
    move-exception v6

    .line 135
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v2, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "valueStr":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 137
    :cond_15
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_16

    .line 138
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_9

    .line 137
    :cond_16
    :goto_8
    nop

    .line 141
    :goto_9
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_b

    .line 120
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v3    # "value":D
    :cond_17
    :goto_a
    nop

    .line 144
    :goto_b
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    goto :goto_c

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_c
    return-object p1
.end method
