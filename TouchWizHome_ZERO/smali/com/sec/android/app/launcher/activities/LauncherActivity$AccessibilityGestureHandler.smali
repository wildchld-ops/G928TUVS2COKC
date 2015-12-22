.class Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;
.super Landroid/os/Handler;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityGestureHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/launcher/activities/LauncherActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mGesture:I

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->readTextOfFocusedView(I)V

    goto :goto_1

    :pswitch_2
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v4, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_1

    :pswitch_3
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_1

    :pswitch_4
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->readTextOfFocusedView(I)V

    goto :goto_1

    :pswitch_5
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v4, v3, v3, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_1

    :pswitch_6
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v3, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
