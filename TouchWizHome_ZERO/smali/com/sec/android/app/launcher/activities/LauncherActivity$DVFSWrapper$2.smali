.class Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$2;
.super Ljava/lang/Thread;
.source "LauncherActivity.java"


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
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$2;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$2;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->boostOn()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->access$700(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;)V

    return-void
.end method
