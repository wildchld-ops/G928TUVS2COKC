.class Lcom/android/keyguard/sec/SecAttributionInfoView$5;
.super Landroid/view/OrientationEventListener;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$5;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$5;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/SecAttributionInfoView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$400(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    return-void
.end method
