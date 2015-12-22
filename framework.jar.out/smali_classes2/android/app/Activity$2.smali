.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/app/Activity$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionStateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/app/Activity$TranslucentConversionStateListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Activity$TranslucentConversionStateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$2;->val$callback:Landroid/app/Activity$TranslucentConversionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslucentConversionComplete(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$2;->val$callback:Landroid/app/Activity$TranslucentConversionStateListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionStateListener;->onTranslucentConversionStateComplete(Z)V

    return-void
.end method
