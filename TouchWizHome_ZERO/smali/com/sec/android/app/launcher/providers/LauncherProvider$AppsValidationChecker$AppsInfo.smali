.class Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsInfo"
.end annotation


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsExist:Z

.field final synthetic this$1:Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->this$1:Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIsExist:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mComponentName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIsExist:Z

    return v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setIsExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mIsExist:Z

    return-void
.end method
