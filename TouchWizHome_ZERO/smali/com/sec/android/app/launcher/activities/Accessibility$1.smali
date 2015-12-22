.class Lcom/sec/android/app/launcher/activities/Accessibility$1;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


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
.method constructor <init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$000(Lcom/sec/android/app/launcher/activities/Accessibility;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessibilityStateChanged - enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # invokes: Lcom/sec/android/app/launcher/activities/Accessibility;->hideSelection()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$100(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$200(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$1;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityEnabled(Z)V

    return-void
.end method
