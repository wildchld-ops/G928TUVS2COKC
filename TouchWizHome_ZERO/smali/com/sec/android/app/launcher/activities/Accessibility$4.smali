.class Lcom/sec/android/app/launcher/activities/Accessibility$4;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$4;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility$4;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$200(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_contextmenu_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility$4;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, v3, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocusedViewReadingAllowed:Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
