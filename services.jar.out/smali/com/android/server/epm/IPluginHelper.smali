.class public interface abstract Lcom/android/server/epm/IPluginHelper;
.super Ljava/lang/Object;
.source "IPluginHelper.java"


# virtual methods
.method public abstract changeThemeState(Ljava/lang/String;IZ)V
.end method

.method public abstract getActiveComponents()[Ljava/lang/String;
.end method

.method public abstract getActiveFestivalPackage()Ljava/lang/String;
.end method

.method public abstract getActiveMyEvents()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategory()I
.end method

.method public abstract getChineseFestivalList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComponentPackageMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCoverAttachStatus(Ljava/lang/String;)Z
.end method

.method public abstract getCurrentThemePackage()Ljava/lang/String;
.end method

.method public abstract getDependencies(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getPluginList()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreviousToCoverPackage()Ljava/lang/String;
.end method

.method public abstract getStateThemePackage(Ljava/lang/String;)I
.end method

.method public abstract getTargetAppList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installThemePackage(Landroid/net/Uri;Z)V
.end method

.method public abstract isOnTrialMode(Ljava/lang/String;)Z
.end method

.method public abstract isThemePackageExist(Ljava/lang/String;)Z
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onPluginDisabled(Ljava/lang/String;)V
.end method

.method public abstract onPluginEnabled(Ljava/lang/String;)V
.end method

.method public abstract onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
.end method

.method public abstract onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
.end method

.method public abstract parsePlugins()V
.end method

.method public abstract removeThemePackage(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Landroid/app/epm/IPluginManagerCallback;)V
.end method

.method public abstract setStateThemePackage(Ljava/lang/String;I)I
.end method
