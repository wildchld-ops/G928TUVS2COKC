.class Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->acquire()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->boostOn()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->access$700(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;)V

    return-void
.end method
