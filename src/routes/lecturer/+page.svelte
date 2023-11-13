<script lang="ts">
    export let data;
</script>

<h1>Lecturer</h1>
<p>UUID: {data.lecturer.UUID}</p>
<p>title_before: {data.lecturer.title_before} {data.lecturer.first_name} {data.lecturer.middle_name}
    {data.lecturer.last_name} {data.lecturer.title_after}</p>
<p><img src={data.lecturer.picture_url} alt="picture"></p>
<p>location: {data.lecturer.location}</p>
<p>claim: {data.lecturer.claim}</p>
<p>claim:</p>
<div>
    {@html data.lecturer.bio}
</div>
<p>Tags:</p>
<ul>
    {#each data.lecturer.tags as tag}
    <li>{tag.name} ({tag.uuid})</li>
    {/each}
</ul>
<p>price_per_hour: {data.lecturer.price_per_hour}</p>
<p>contact - telephone_numbers: {data.lecturer.contact.telephone_numbers}</p>
<p>contact - emails: {data.lecturer.contact.emails}</p>