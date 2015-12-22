.class public abstract Landroid/app/usage/UsageStatsManagerInternal;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract prepareShutdown()V
.end method

.method public abstract reportConfigurationChange(Landroid/content/res/Configuration;I)V
.end method

.method public abstract reportEvent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
.end method

.method public abstract reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract reportPprChange(Ljava/lang/Object;)V
.end method
