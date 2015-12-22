.class public final Lcom/sec/android/app/launcher/activities/ActivityResultHandler;
.super Ljava/lang/Object;
.source "ActivityResultHandler.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/ActivityResultHandler$1;,
        Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;
    }
.end annotation


# static fields
.field private static gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;


# instance fields
.field private mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

.field private mDataManager:Lcom/sec/android/app/launcher/data/DataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/ActivityResultHandler;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method public static create()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    return-object v0
.end method

.method public static get()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->gInstance:Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    return-object v0
.end method


# virtual methods
.method public getActivityResult()Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mActivityResultImpl:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setDataManager(Lcom/sec/android/app/launcher/data/DataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-void
.end method
