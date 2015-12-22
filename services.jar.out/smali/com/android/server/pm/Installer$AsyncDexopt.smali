.class Lcom/android/server/pm/Installer$AsyncDexopt;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/android/server/pm/Installer$AsyncCmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncDexopt"
.end annotation


# instance fields
.field private dexCodeInstructionSet:Ljava/lang/String;

.field private pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object p3, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->dexCodeInstructionSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processResult([Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    aget-object v2, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-ltz v1, :cond_1

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    if-eq v2, v5, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "async dexopt success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->dexCodeInstructionSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    iput v6, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_0

    :cond_1
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "async dexopt failed already or just now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_1

    :cond_2
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncDexopt length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    iput v5, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_1
.end method
