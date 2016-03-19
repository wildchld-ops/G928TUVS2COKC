.class final Lcom/nuance/nmdp/speechkit/SpeechKit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKit;->a(Landroid/content/res/AssetFileDescriptor;)Lcom/nuance/nmdp/speechkit/Prompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/ae;

.field private synthetic b:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ae;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->a:Lcom/nuance/nmdp/speechkit/ae;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->a:Lcom/nuance/nmdp/speechkit/ae;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/ae;->a(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
