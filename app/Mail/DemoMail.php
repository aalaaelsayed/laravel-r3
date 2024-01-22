<?php

namespace App\Mail;
use Illuminate\Http\Request;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Address;
use App\models\Email;



class DemoMail extends Mailable
{
    use Queueable, SerializesModels;
    //public $name, $email, $phone, $subject, $message;
    public $data;
        /**
     * Create a new message instance.
     */
	
	public function __construct($data)
	{
        $this->data = $data;

		// $this->data = $name;
		// $this->email = $email;
		// $this->phone = $phone;
		// $this->subject = $subject;
        // $this->message = $message;
	}
    // public function build( )
    // {
    //     return $this->markdown('emails.test20')->subject(config('app.name').'contact us');
           
                    
  
    // }
    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
          //  from: new Address('aalaa@example.com', 'aalaaelsayed'),
           // subject: 'Demo Mail',
           from: new Address($this->data['email'], $this->data['name']),
           subject: $this->data['subject'] . ' - Contact Us',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            // markdown: 'emails.test20',
            // with:[
            //     'name'=>$this->name,
            //     'email'=>$this->email,
            //     'phone'=>$this->phone,
            //     'subject'=>$this->subject,
            //     'message'=>$this->message,

            // ]
            markdown: 'emails.test20',
            with:[
                $this->data,
            ]
        );
    }


    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
