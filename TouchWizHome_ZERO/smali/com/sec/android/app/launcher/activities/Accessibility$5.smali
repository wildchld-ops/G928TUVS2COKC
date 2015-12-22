.class Lcom/sec/android/app/launcher/activities/Accessibility$5;
.super Landroid/database/ContentObserver;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;-><init>(Landroid/view/SurfaceView;Lcom/sec/daliviews/views/ContainerView;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/Accessibility;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$5;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$5;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$200(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_single_tap_selection"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$5;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    iput-boolean v3, v1, Lcom/sec/android/app/launcher/activities/Accessibility;->isSingleTapActivated:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$5;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/launcher/activities/Accessibility;->isSingleTapActivated:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
