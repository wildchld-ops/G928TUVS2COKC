.class Lcom/sec/android/app/launcher/activities/Accessibility$7;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;->handleMotionEvent(Landroid/view/MotionEvent;)Z
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$7;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$7;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # invokes: Lcom/sec/android/app/launcher/activities/Accessibility;->setFollowMode()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$400(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    return-void
.end method
