.class Lcom/sec/android/app/launcher/activities/HomePresenter$16;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$16;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$16;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4302(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    return-void
.end method
